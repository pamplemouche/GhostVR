.class final Lcom/oculus/stetho/StethoModule$1;
.super Ljava/lang/Object;
.source "StethoModule.java"

# interfaces
.implements Lcom/facebook/stetho/DumperPluginsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/stetho/StethoModule;->provideStethoInitializer(Landroid/content/Context;Ljava/util/Set;)Lcom/facebook/stetho/Stetho$Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dumperPlugins:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/stetho/StethoModule$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oculus/stetho/StethoModule$1;->val$dumperPlugins:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/facebook/stetho/dumpapp/DumperPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    iget-object v0, p0, Lcom/oculus/stetho/StethoModule$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/stetho/StethoModule$1;->val$dumperPlugins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/dumpapp/DumperPlugin;

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string v0, "StethoModule"

    const-string v3, "unknown null dumper plugin. Skipping."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, v0}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->provide(Lcom/facebook/stetho/dumpapp/DumperPlugin;)Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
