.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;

    const v0, 0x7f090034

    const-string v1, "field \'mBtnLeftHand\' and method \'onClickLeftHand\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnLeftHand\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnLeftHand:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/q;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/q;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090036

    const-string v1, "field \'mBtnRightHand\' and method \'onClickRightHand\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'mBtnRightHand\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnRightHand:Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/r;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/r;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
