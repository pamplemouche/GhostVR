.class public LvC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:I

.field public final y:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LvC0;->w:Ljava/lang/String;

    .line 3
    iput p2, p0, LvC0;->x:I

    .line 4
    iput-wide p3, p0, LvC0;->y:J

    return-void
.end method
