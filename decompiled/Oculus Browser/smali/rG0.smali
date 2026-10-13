.class public LrG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxF0;


# instance fields
.field public final synthetic w:LsG0;


# direct methods
.method public constructor <init>(LsG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LrG0;->w:LsG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LrG0;->w:LsG0;

    .line 2
    iget-object v0, v0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 3
    iget-wide v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 4
    invoke-static {v1, v2, v0}, LJ/N;->M2FbdG0l(JLjava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
