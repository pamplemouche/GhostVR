.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;

    const v0, 0x7f09011d

    const-string v1, "field \'mButtonArea\' and method \'onClickSkipButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mButtonArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mButtonArea:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/b;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090137

    const-string v2, "field \'mTextViewDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    return-void
.end method
