.class interface abstract Lcom/oculus/standalone/StandaloneSetupMethods$Methods;
.super Ljava/lang/Object;
.source "StandaloneSetupMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/standalone/StandaloneSetupMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getHighPriorityAppsDownloadWaitTime(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getStandaloneInitialInstallApps(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method
