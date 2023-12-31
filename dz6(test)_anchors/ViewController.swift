

import UIKit

class ViewController: UIViewController {

    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
        
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your account"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
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
    
    private let forgotPswLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.textColor = .red
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let googleImageView = UIImageView(image: UIImage(named: "google"))
    private let facebookImageView = UIImageView(image: UIImage(named: "facebook"))
    private let instagramImageView = UIImageView(image: UIImage(named: "instagram"))
    
    private let stackView3: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 40
        return stack
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.161, green: 0.714, blue: 0.965, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private let accountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = .systemGray2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let createButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Now", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        configurateLabel()
        configurate_email_password()
        configurateIcons()
        configurateLoginButton()
        confugurateCreateAccount()
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
        
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50)
        ])
    
        
        view.addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginLabel.centerXAnchor.constraint(equalTo: welcomeLabel.centerXAnchor),
            loginLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5)
        ])
        
    }
        

    
    private func configurate_email_password() {
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30)
        ])
        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 48)
        ])

        
        view.addSubview(pswLabel)
        pswLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pswLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pswLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10)
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
        
        view.addSubview(forgotPswLabel)
        forgotPswLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgotPswLabel.topAnchor.constraint(equalTo: pswTextField.bottomAnchor, constant: 5),
            forgotPswLabel.trailingAnchor.constraint(equalTo: pswTextField.trailingAnchor)
        ])
        
    }
    
    private func configurateIcons() {
        
        view.addSubview(stackView3)
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        
        stackView3.addArrangedSubview(googleImageView)
        stackView3.addArrangedSubview(facebookImageView)
        stackView3.addArrangedSubview(instagramImageView)
        
        NSLayoutConstraint.activate([
            stackView3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
        
    }
    
    private func configurateLoginButton() {
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: stackView3.topAnchor, constant: -130),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
            
        
        loginButton.addTarget(self, action: #selector(singIn), for: .touchUpInside)
        
    }
    
    private func confugurateCreateAccount() {
        view.addSubview(accountLabel)
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            accountLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            accountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65)
        ])

        
        view.addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createButton.bottomAnchor.constraint(equalTo: accountLabel.bottomAnchor, constant: 7),
            createButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -65)
        ])

        
        createButton.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
    }

    
    @objc func singIn(_ sender: UIButton) {
        
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 1
            emailTextField.placeholder = "   Fill the information"
        } else {
            emailTextField.layer.borderColor = UIColor.white.cgColor
        }
        
        if pswTextField.text?.isEmpty ?? true {
            pswTextField.layer.borderColor = UIColor.red.cgColor
            pswTextField.layer.borderWidth = 1
            pswTextField.placeholder = "   Fill the information"
            
        } else {
            pswTextField.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @objc func hidePsw(_ sender: UIButton) {
        if pswTextField.textColor == .black {
            pswTextField.textColor = .white
        } else {
            pswTextField.textColor = .black
        }
        
        
    }
    
    @objc func goToRegister(_ sender: UIButton) {
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        navigationController?.pushViewController(RegisterViewController(), animated: true)
      
        
    }
}
        


