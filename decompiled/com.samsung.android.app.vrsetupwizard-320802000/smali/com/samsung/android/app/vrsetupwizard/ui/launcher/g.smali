.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c006a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p3}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p3, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-static {v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    const p1, 0x7f09013b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p3}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, p3

    float-to-int v1, v1

    const/4 v2, 0x1

    mul-int v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p2
.end method
