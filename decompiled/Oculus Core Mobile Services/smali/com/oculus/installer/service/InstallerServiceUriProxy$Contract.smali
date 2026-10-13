.class public Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;
.super Ljava/lang/Object;
.source "InstallerServiceUriProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/installer/service/InstallerServiceUriProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contract"
.end annotation


# static fields
.field public static EXTRA_CALLING_PACKAGE:Ljava/lang/String;

.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field public static EXTRA_REQUEST_METHOD:Ljava/lang/String;

.field public static EXTRA_REQUEST_ORIGIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "request_method"

    sput-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_REQUEST_METHOD:Ljava/lang/String;

    .line 35
    const-string v0, "package_name"

    sput-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "calling_package"

    sput-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_CALLING_PACKAGE:Ljava/lang/String;

    .line 37
    const-string v0, "request_origin"

    sput-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_REQUEST_ORIGIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
