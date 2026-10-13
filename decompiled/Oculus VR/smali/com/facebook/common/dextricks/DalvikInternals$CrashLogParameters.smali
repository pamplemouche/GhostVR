.class public Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;
.super Ljava/lang/Object;
.source "DalvikInternals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/DalvikInternals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashLogParameters"
.end annotation


# instance fields
.field private final mInstacrashIntervalMs:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput p1, p0, Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;->mInstacrashIntervalMs:I

    .line 445
    return-void
.end method


# virtual methods
.method public getInstacrashInterval()I
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;->mInstacrashIntervalMs:I

    return v0
.end method
