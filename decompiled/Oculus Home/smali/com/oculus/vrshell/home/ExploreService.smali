.class public Lcom/oculus/vrshell/home/ExploreService;
.super Lcom/oculus/vrshell/home/CommonService;
.source "ExploreService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->EXPLORE:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/home/CommonService;-><init>(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V

    .line 8
    return-void
.end method
