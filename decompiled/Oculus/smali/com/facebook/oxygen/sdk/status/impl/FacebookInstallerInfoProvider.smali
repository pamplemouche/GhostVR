.class public Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;
.super Ljava/lang/Object;
.source "FacebookInstallerInfoProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/status/impl/FacebookInstallerInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    return-void
.end method
