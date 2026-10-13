.class Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
.super Ljava/lang/Object;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequiredMobileVersion"
.end annotation


# instance fields
.field private display_name:Ljava/lang/String;

.field private download_uri:Ljava/lang/String;

.field private minimum_version:I

.field private package_name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)I
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;

    .prologue
    .line 233
    iget v0, p0, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->minimum_version:I

    return v0
.end method
