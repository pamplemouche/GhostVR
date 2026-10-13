.class public Lorg/chromium/components/offline_items_collection/OfflineItem;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:D

.field public H:J

.field public I:Z

.field public J:J

.field public K:J

.field public L:J

.field public M:Z

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Z

.field public S:I

.field public T:Z

.field public U:Z

.field public V:J

.field public W:LfU0;

.field public X:J

.field public Y:Z

.field public Z:I

.field public a0:I

.field public w:LbU0;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LbU0;

    invoke-direct {v0}, LbU0;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->z:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lorg/chromium/components/offline_items_collection/OfflineItem;

    invoke-direct {v0}, Lorg/chromium/components/offline_items_collection/OfflineItem;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, LbU0;

    iget-object v3, v1, LbU0;->a:Ljava/lang/String;

    iget-object v1, v1, LbU0;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    .line 3
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->x:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->x:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->y:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->y:Ljava/lang/String;

    .line 5
    iget v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->z:I

    iput v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->z:I

    .line 6
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->A:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->A:Z

    .line 7
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->B:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->B:Z

    .line 8
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->C:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->C:Z

    .line 9
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->D:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->D:Z

    .line 10
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->H:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->H:J

    .line 11
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->I:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->I:Z

    .line 12
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->J:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->J:J

    .line 13
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->K:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->K:J

    .line 14
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->L:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->L:J

    .line 15
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->M:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->M:Z

    .line 16
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->N:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->N:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->O:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->O:Ljava/lang/String;

    .line 18
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->E:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->E:Z

    .line 19
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->F:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->F:Z

    .line 20
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->G:D

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->G:D

    .line 21
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->P:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->P:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->Q:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->Q:Ljava/lang/String;

    .line 23
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->R:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->R:Z

    .line 24
    iget v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    iput v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    .line 25
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->T:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->T:Z

    .line 26
    iget-boolean v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->U:Z

    iput-boolean v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->U:Z

    .line 27
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->V:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->V:J

    .line 28
    iget-wide v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->X:J

    iput-wide v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->X:J

    .line 29
    iget v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->Z:I

    iput v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->Z:I

    .line 30
    iget v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->a0:I

    iput v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->a0:I

    .line 31
    iget-object v1, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->W:LfU0;

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, LfU0;

    iget-object v2, p0, Lorg/chromium/components/offline_items_collection/OfflineItem;->W:LfU0;

    iget-wide v3, v2, LfU0;->a:J

    iget-object v5, v2, LfU0;->b:Ljava/lang/Long;

    iget v2, v2, LfU0;->c:I

    invoke-direct {v1, v3, v4, v5, v2}, LfU0;-><init>(JLjava/lang/Long;I)V

    iput-object v1, v0, Lorg/chromium/components/offline_items_collection/OfflineItem;->W:LfU0;

    :cond_1
    return-object v0
.end method
