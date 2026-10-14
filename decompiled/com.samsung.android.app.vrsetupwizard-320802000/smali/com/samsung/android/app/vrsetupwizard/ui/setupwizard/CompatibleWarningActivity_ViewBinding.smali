.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090048

    const-string v2, "field \'tvDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;->tvDescription:Landroid/widget/TextView;

    const v0, 0x7f0900af

    const-string v1, "method \'onClickNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/a;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
