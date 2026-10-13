.class public abstract LNn0;
.super LMn0;
.source "PG"


# instance fields
.field public final b:LHn0;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, LMn0;-><init>()V

    .line 2
    iput-object p1, p0, LNn0;->c:Landroid/content/Context;

    .line 3
    new-instance v7, LHn0;

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x112a880

    const-string v1, "com.google.android.apps.chrome.omaha"

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LHn0;-><init>(Ljava/lang/String;Landroid/content/Context;JJ)V

    iput-object v7, p0, LNn0;->b:LHn0;

    return-void
.end method
