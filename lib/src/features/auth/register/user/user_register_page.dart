import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:validatorless/validatorless.dart';

import 'package:dw_barbershop/src/core/ui/helpers/form_helper.dart';
import 'package:dw_barbershop/src/core/ui/helpers/messages.dart';

import 'user_register_vm.dart';

class UserRegisterPage extends ConsumerStatefulWidget {

  const UserRegisterPage({ super.key });

  @override
  ConsumerState<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends ConsumerState<UserRegisterPage> {

  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }


   @override
   Widget build(BuildContext context) {

      final userRegisterVm = ref.watch(userRegisterVmProvider.notifier);

      ref.listen(userRegisterVmProvider, (_, state) {
        switch(state) {
          case UserRegisterStateStatus.initial:
            break;
          case UserRegisterStateStatus.success:
            Navigator.of(context).pushNamed('/auth/register/barbershop');
          case UserRegisterStateStatus.error:
            Messages.showError('Erro ao registrar usuário administrador', context,);
        }
      });


       return Scaffold(
           appBar: AppBar(title: const Text('Criar conta'),),
           body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameEC,
                      validator: Validatorless.required('Nome obrigatório'),
                      decoration: const InputDecoration(
                        label: Text('Nome'),
                      ),
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    TextFormField(
                      onTapOutside: (_) => unfocus(context),
                      controller: emailEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('E-mail obrigatório'),
                        Validatorless.email('E-mail inválido'),
                      ]),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        label: Text('E-mail'),
                      ),
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    TextFormField(
                      onTapOutside: (_) => unfocus(context),
                      controller: passwordEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.min(6, 'Senha deve conter no mínimo 6 caracteres'),
                      ]),
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Senha'),
                      ),
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    TextFormField(
                      onTapOutside: (_) => unfocus(context),
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.compare(passwordEC, 'Senha diferente de Confirma Senha'),
                      ]),
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Confirmar senha'),
                      ),
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(56),
                      ),
                      onPressed: () {
                        switch(formKey.currentState?.validate()) {
                          case null || false:
                            Messages.showError('Formulário inválido', context);
                          case true:
                            userRegisterVm.register(
                              name: nameEC.text.trim(), 
                              email: emailEC.text.trim(), 
                              password: passwordEC.text.trim(),
                            );
                        }
                      }, 
                      child: const Text('CRIAR CONTA'),
                    ),
                  ],
                ),
              ),
            ),
           ),
       );
  }
}