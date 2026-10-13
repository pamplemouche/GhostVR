.class public Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;
.super Ljava/lang/Object;
.source "LightSharedPreferencesFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCommitOnMainThreadPolicy:I

.field final mContext:Landroid/content/Context;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mOverridePrivateDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mCommitOnMainThreadPolicy:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;
    .locals 4

    .prologue
    .line 155
    new-instance v1, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;

    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 156
    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->access$000(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mOverridePrivateDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mOverridePrivateDir:Ljava/io/File;

    .line 157
    :goto_0
    iget v3, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mCommitOnMainThreadPolicy:I

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;I)V

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->createProcessPrivateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
