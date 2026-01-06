# Aufgabe 2a

Schauen Sie sich das Modul Random von HashiCorp an (https://registry.terraform.io/providers/hashicorp/random/latest/docs)
• Schreiben sie eine Terraform-Anwendung, die folgende Werte in der Konsole ausgibt-
• Ein zufälliges Passwort (20 Zeichen lang, Klein- und Großbuchstaben, Zahlen und Sonderzeichen)
• Einen zufälligen Haustiernamen.
• Benutzen sie drei .tf-Dateien: (Quellen in den Source-Files)
• Terraform-Konfiguration (z.B. providers.tf)
````terraform
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "random" {
  # Configuration options
}
````
• Ressourcen (z.B. main.tf)
````terraform
resource "random_password" "password" {
  length           = 20
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_pet" "pet" {
  length = 2
  separator = "-"
}
````
• Ausgaben (z.B. output.tf)
````terraform
output "output_random_password" {
  value = nonsensitive(random_password.password.result)
}

output "output_random_pet" {
  value = random_pet.pet.id
}
````
• Wichtig: Verzichten sie zur Lösung auf LLMs. Können Sie sich das Passwort in der Konsole anzeigen lassen? Wenn nicht, gibt es einen Weg, dies trotzdem zu erzwingen?
Das Passwort wird mit standardmäßig als `<Sensitive>` angezeigt, aber mit `nonsensitive(<value-expression>)` lassen sich auch sensitive Daten, wie Passwörter anzeigen.<br>
![2.1.png](img/2.1.png)


# Aufgabe 2b

Erstellung sie IaC mittels LLMs.
• Verwenden Sie ein LLM ihrer Wahl, um mit dem unten angegebenen Prompt eine Infrastruktur für Terraform und AWS zu erstellen.
• Was können sie bemerken, wenn sie den Prompt mehrfach auf dam gleichen Modell (LLM) anwenden?
• Überführen sie den Code des LLMs in lokale Dateien, um diesen auf der Festplatte zu speichern und in Terraform ausführen zu können.
Prompt: `I need a Web Service running on an EC2 and I need to send emails via Amazon SNS. Could you provide me with the terraform code`
