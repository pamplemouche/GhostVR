.class public Lcom/oculus/vrshell/home/FirstTimeNUXService;
.super Lcom/oculus/vrshell/home/CommonService;
.source "FirstTimeNUXService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->FIRST_TIME_NUX:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/home/CommonService;-><init>(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V

    .line 9
    return-void
.end method
