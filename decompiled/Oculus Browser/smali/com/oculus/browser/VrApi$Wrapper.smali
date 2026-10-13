.class public Lcom/oculus/browser/VrApi$Wrapper;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oculus/browser/VrApi;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public isInitializedWithContext(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/oculus/browser/VrApi;->isInitializedWithContext(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public shutdown()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/oculus/browser/VrApi;->shutdown()V

    return-void
.end method
