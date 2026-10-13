.class public Lcom/oculus/autoupdates/database/AutoUpdateRecord;
.super Ljava/lang/Object;
.source "AutoUpdateRecord.java"


# instance fields
.field private mAttempts:I

.field private final mPackageName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mPackageName:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mVersionCode:I

    .line 20
    iput p3, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mAttempts:I

    .line 21
    return-void
.end method


# virtual methods
.method public getAutoUpdateAttempts()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mAttempts:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mVersionCode:I

    return v0
.end method

.method public increaseAttemptCount()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->mAttempts:I

    .line 37
    return-void
.end method
