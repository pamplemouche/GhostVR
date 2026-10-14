.class public Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

    const v0, 0x7f0900b3

    const-string v1, "method \'onClickOk\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
