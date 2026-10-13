.class public Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;
.super Ljava/lang/Object;
.source "GkSessionlessModule.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gk/sessionless/GkSessionlessModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GkSessionlessModuleSelendroidInjector"
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;)V
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-virtual {p1}, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;->injectMe()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1, p0}, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;->$ul_injectMe(Landroid/content/Context;Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getGatekeeperWriter()Lcom/facebook/gk/store/GatekeeperWriter;
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 102
    sget v0, Lcom/facebook/gk/sessionless/GkSessionlessModule$UL_id;->$ul_$xXXcom_facebook_gk_store_GatekeeperWriter$xXXcom_facebook_gk_sessionless_Sessionless$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/facebook/gk/sessionless/GkSessionlessModule$GkSessionlessModuleSelendroidInjector;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/store/GatekeeperWriter;

    .line 103
    return-object v0
.end method

.method final injectMe()V
    .locals 0
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 96
    return-void
.end method
