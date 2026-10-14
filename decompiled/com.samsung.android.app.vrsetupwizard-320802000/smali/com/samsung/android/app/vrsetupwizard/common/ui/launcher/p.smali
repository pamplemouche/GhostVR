.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "523"

    const-string v0, "0006"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsungapps://ProductDetail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/p;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a()V

    return-void
.end method
