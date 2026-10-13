.class public Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "SavedCategoryDivePresenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 16
    return-void
.end method


# virtual methods
.method public get(Lcom/oculus/horizon/libraryui/SavedCategory;Ljava/util/ArrayList;)Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/libraryui/SavedCategory;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem;",
            ">;)",
            "Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;"
        }
    .end annotation

    .prologue
    .line 20
    const-string v0, "getMethod_com.oculus.horizon.libraryui.SavedCategoryDivePresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SavedCategory;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
