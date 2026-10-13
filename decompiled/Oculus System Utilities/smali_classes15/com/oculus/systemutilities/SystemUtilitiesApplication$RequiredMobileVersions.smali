.class Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;
.super Ljava/lang/Object;
.source "SystemUtilitiesApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/systemutilities/SystemUtilitiesApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequiredMobileVersions"
.end annotation


# instance fields
.field private required_versions:[Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;)[Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;->required_versions:[Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;

    return-object v0
.end method
