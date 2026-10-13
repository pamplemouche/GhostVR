.class public Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:Z


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:LMT0;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->a:Ljava/lang/String;

    .line 3
    iput-wide p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    return-void
.end method

.method public static create(JLjava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method private deleteInstanceID(I)V
    .locals 1

    .line 1
    new-instance v0, LJT0;

    invoke-direct {v0, p0, p1}, LJT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    .line 2
    invoke-virtual {v0}, LLT0;->b()V

    return-void
.end method

.method private deleteToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, LIT0;

    invoke-direct {v0, p0, p2, p3, p1}, LIT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, LLT0;->b()V

    return-void
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->b:J

    return-void
.end method

.method private getToken(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 7

    .line 1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 3
    aget-object v1, p4, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p4, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :cond_0
    new-instance p4, LHT0;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, LHT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 5
    invoke-virtual {p4}, LLT0;->b()V

    return-void
.end method

.method public static setBlockOnAsyncTasksForTesting(Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->d:Z

    .line 2
    sput-boolean p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->d:Z

    return v0
.end method


# virtual methods
.method public getCreationTime(I)V
    .locals 1

    .line 1
    new-instance v0, LGT0;

    invoke-direct {v0, p0, p1}, LGT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    .line 2
    invoke-virtual {v0}, LLT0;->b()V

    return-void
.end method

.method public getId(I)V
    .locals 1

    .line 1
    new-instance v0, LFT0;

    invoke-direct {v0, p0, p1}, LFT0;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    .line 2
    invoke-virtual {v0}, LLT0;->b()V

    return-void
.end method
