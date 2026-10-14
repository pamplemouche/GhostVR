.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090136

    const-string v2, "field \'mTextViewBattery\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewBattery:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090138

    const-string v2, "field \'mTextViewDeviceId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewDeviceId:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09013c

    const-string v2, "field \'mTextViewVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->mTextViewVersion:Landroid/widget/TextView;

    const v0, 0x7f090093

    const-string v1, "method \'onClickFota\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090035

    const-string v1, "method \'onClickRemoveController\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
