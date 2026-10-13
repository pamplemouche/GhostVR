.class public Lcom/oculus/appmanager/assets/AssetInfo;
.super Ljava/lang/Object;
.source "AssetInfo.java"


# instance fields
.field public final entitlement:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final installedBinaryID:Ljava/lang/String;

.field public final isRequired:Z

.field public final metadata:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final size:J

.field public final type:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/oculus/appmanager/assets/AssetInfo;->packageName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/oculus/appmanager/assets/AssetInfo;->installedBinaryID:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oculus/appmanager/assets/AssetInfo;->id:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/oculus/appmanager/assets/AssetInfo;->name:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/oculus/appmanager/assets/AssetInfo;->type:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/oculus/appmanager/assets/AssetInfo;->metadata:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/oculus/appmanager/assets/AssetInfo;->entitlement:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/oculus/appmanager/assets/AssetInfo;->uri:Ljava/lang/String;

    .line 36
    iput-wide p8, p0, Lcom/oculus/appmanager/assets/AssetInfo;->size:J

    .line 37
    iput-boolean p11, p0, Lcom/oculus/appmanager/assets/AssetInfo;->isRequired:Z

    .line 38
    return-void
.end method
