.class public Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;
.super Ljava/lang/Object;
.source "DeviceOwnerInstallerInfoProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/status/impl/DeviceOwnerInstallerInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    return-void
.end method
