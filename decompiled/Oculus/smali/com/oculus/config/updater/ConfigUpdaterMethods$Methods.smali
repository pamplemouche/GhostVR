.class interface abstract Lcom/oculus/config/updater/ConfigUpdaterMethods$Methods;
.super Ljava/lang/Object;
.source "ConfigUpdaterMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/updater/ConfigUpdaterMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getGatekeepers(Ljava/util/List;Lretrofit/Callback;)V
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit/http/Query;
            value = "projects[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/config/updater/RefreshGatekeepersResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/features"
    .end annotation
.end method
