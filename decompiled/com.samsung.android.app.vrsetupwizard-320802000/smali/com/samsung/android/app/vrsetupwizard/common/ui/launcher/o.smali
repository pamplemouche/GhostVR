.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "523"

    const-string v0, "0005"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/o;->b:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/n;->a()V

    return-void
.end method
