.class public Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;
.super Ljava/lang/Object;
.source "TritiumInstallerInfoProvider.java"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/status/impl/TritiumInstallerInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 24
    return-void
.end method
