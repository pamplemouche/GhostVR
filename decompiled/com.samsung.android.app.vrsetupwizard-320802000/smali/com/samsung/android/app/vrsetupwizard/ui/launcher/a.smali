.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;->c:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;->onClickOk()V

    return-void
.end method
