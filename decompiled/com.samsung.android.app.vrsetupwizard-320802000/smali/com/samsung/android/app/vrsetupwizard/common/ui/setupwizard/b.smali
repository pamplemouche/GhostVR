.class public Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;
.super Landroid/support/v7/app/t;


# static fields
.field static final synthetic l:[La/e/e;


# instance fields
.field private final m:La/b;

.field private final n:La/b;

.field private o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [La/e/e;

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mContext"

    const-string v4, "getMContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "TAG"

    const-string v4, "getTAG()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->l:[La/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/t;-><init>()V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->m:La/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->n:La/b;

    return-void
.end method


# virtual methods
.method protected final b(I)V
    .locals 3

    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->g()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final k()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->m:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->l:[La/e/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected final l()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->n:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->l:[La/e/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/t;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/t;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060016

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
