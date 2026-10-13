.class public Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;
.super Ljava/lang/Object;
.source "FacebookServicesInfoProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 24
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/status/impl/FacebookServicesInfoProvider;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method
