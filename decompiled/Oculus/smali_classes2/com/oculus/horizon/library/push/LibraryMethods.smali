.class public Lcom/oculus/horizon/library/push/LibraryMethods;
.super Ljava/lang/Object;
.source "LibraryMethods.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/library/push/LibraryMethods$Methods;
    }
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mMethods:Lcom/oculus/horizon/library/push/LibraryMethods$Methods;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lretrofit/RestAdapter;)V
    .locals 2
    .param p2    # Lretrofit/RestAdapter;
        .annotation runtime Lcom/oculus/http/core/annotations/OculusRestAdapter;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/library/push/LibraryMethods;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 48
    const-class v0, Lcom/oculus/horizon/library/push/LibraryMethods$Methods;

    invoke-virtual {p2, v0}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/library/push/LibraryMethods$Methods;

    iput-object v0, p0, Lcom/oculus/horizon/library/push/LibraryMethods;->mMethods:Lcom/oculus/horizon/library/push/LibraryMethods$Methods;

    .line 49
    return-void
.end method
