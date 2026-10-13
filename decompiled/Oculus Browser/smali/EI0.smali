.class public final LEI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public w:I

.field public x:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LEI0;->w:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, LEI0;->x:J

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const-string v0, "Tab.RestoreUserPersistence"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p0, LEI0;->w:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, LEI0;->a(I)V

    .line 3
    iput p2, p0, LEI0;->w:I

    :cond_1
    return-void
.end method
