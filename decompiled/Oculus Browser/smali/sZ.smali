.class public LsZ;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LrZ;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LrZ;

    invoke-direct {v0}, LrZ;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, LsZ;->a:LrZ;

    return-void
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "Android.IntentHeaders"

    const/4 v1, 0x6

    .line 1
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
