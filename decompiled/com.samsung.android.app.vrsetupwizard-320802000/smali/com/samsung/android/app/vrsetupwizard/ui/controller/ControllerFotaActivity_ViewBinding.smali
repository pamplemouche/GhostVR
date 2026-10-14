.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090094

    const-string v2, "field \'mLayoutLatest\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutLatest:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09009a

    const-string v2, "field \'mLayoutUpdateAvailable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdateAvailable:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09009b

    const-string v2, "field \'mLayoutUpdating\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mLayoutUpdating:Landroid/widget/LinearLayout;

    const-class v0, Landroid/support/v7/widget/SeslProgressBar;

    const v1, 0x7f09006f

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslProgressBar;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mProgressBar:Landroid/support/v7/widget/SeslProgressBar;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09006e

    const-string v2, "field \'mTvDeviceVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mTvDeviceVersion:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090070

    const-string v2, "field \'mTvUpdateVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mTvUpdateVersion:Landroid/widget/TextView;

    const v0, 0x7f090038

    const-string v1, "method \'onClickButtonUpdate\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/n;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
