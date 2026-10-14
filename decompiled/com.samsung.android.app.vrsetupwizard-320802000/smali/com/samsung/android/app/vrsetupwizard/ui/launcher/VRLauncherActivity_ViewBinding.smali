.class public Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    const-class v0, Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f090142

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090090

    const-string v2, "field \'mLayoutCircleIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mLayoutCircleIndicator:Landroid/widget/LinearLayout;

    const v0, 0x7f090031

    const-string v1, "field \'mGalaxyAppsBtn\' and method \'onClickGalaxyApps\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'mGalaxyAppsBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mGalaxyAppsBtn:Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/n;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
