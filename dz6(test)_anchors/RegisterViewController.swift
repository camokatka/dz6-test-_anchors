

import UIKit


class RegisterViewController: UIViewController {

    var flag = false
    
    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    private let createLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new account"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Username"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Email"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let mobileNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let mobileNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Mobile Number"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let pswLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    private let pswTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Password"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "eye"), for: .normal)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.161, green: 0.714, blue: 0.965, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        configurateLabel()
        configurateTextFields()
        configurateLoginButton()
    }

    private func initUI() {
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func configurateLabel() {
        
        view.addSubview(registerLabel)
        registerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            registerLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        view.addSubview(createLabel)
        createLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createLabel.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 5),
            createLabel.centerXAnchor.constraint(equalTo: registerLabel.centerXAnchor)
        ])
        
    }
    
    private func configurateTextFields() {
        
        view.addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: createLabel.bottomAnchor, constant: 5),
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])

        
        view.addSubview(usernameTextField)
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 10),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])

        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        view.addSubview(mobileNumberLabel)
        mobileNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mobileNumberLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            mobileNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])
        
        view.addSubview(mobileNumberTextField)
        mobileNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mobileNumberTextField.topAnchor.constraint(equalTo: mobileNumberLabel.bottomAnchor, constant: 8),
            mobileNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mobileNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            mobileNumberTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        view.addSubview(pswLabel)
        pswLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pswLabel.topAnchor.constraint(equalTo: mobileNumberTextField.bottomAnchor, constant: 10),
            pswLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])
        
        view.addSubview(pswTextField)
        pswTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pswTextField.topAnchor.constraint(equalTo: pswLabel.bottomAnchor, constant: 8),
            pswTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pswTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            pswTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        view.addSubview(eyeButton)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton.centerYAnchor.constraint(equalTo: pswTextField.centerYAnchor),
            eyeButton.trailingAnchor.constraint(equalTo: pswTextField.trailingAnchor, constant: -5)
        ])

        
        eyeButton.addTarget(self, action: #selector(hidePsw), for: .touchUpInside)
    }
    
    private func configurateLoginButton() {
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -130),
            loginButton.heightAnchor.constraint(equalToConstant: 48)
        ])

        
        loginButton.addTarget(self, action: #selector(goToForgotPsw), for: .touchUpInside)
        
    }
    
    
    @objc func hidePsw(_ sender: UIButton) {
        
        if pswTextField.textColor == .black {
            pswTextField.textColor = .white
        } else {
            pswTextField.textColor = .black
        }
        
    }
    

    
    @objc func goToForgotPsw(_ sender: UIButton) {
        
        flag = false
        fieldIsEmpty(textField: usernameTextField)
        fieldIsEmpty(textField: emailTextField)
        fieldIsEmpty(textField: mobileNumberTextField)
        fieldIsEmpty(textField: pswTextField)
        
        if !flag {
            let vc = ForgotPasswordViewController()
            navigationController?.pushViewController(vc, animated: true)
            vc.email = emailTextField.text!
        }
        
    }
    
    private func fieldIsEmpty(textField: UITextField) {
        
        if textField.text?.isEmpty ?? true {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1
            textField.placeholder = "   Fill the information"
            flag = true
        } else {
            textField.layer.borderColor = UIColor.white.cgColor
            
        }
        
    }
    
    
    
}
