.class Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;
.super Ljava/lang/Object;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequiredMobileVersions"
.end annotation


# instance fields
.field private required_versions:[Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;)[Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;->required_versions:[Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;

    return-object v0
.end method
