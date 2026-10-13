.class public LgZ0;
.super Landroid/content/ContextWrapper;
.source "PG"


# instance fields
.field public a:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LcZ0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .line 1
    iget-object v0, p0, LgZ0;->a:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    new-instance v1, LeZ0;

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, LeZ0;-><init>(LgZ0;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, LgZ0;->a:Landroid/content/res/Resources;

    .line 5
    :cond_0
    iget-object v0, p0, LgZ0;->a:Landroid/content/res/Resources;

    return-object v0
.end method
