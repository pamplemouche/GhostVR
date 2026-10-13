.class public Lcom/oculus/horizon/store/StoreItemAdapterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "StoreItemAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/store/StoreItemAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 18
    return-void
.end method


# virtual methods
.method public get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Lcom/oculus/horizon/store/StoreItemAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/oculus/horizon/store/StoreSection;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;ZZ",
            "Lcom/oculus/horizon/store/InstallApi;",
            "Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;",
            "Lcom/oculus/horizon/logging/TrackingViews$View;",
            ")",
            "Lcom/oculus/horizon/store/StoreItemAdapter;"
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, "getMethod_com.oculus.horizon.store.StoreItemAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/store/StoreItemAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/oculus/horizon/store/StoreItemAdapter;-><init>(Lcom/facebook/inject/InjectorLike;Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
