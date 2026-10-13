.class public LqG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public final synthetic w:LsG0;


# direct methods
.method public constructor <init>(LsG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LqG0;->w:LsG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LqG0;->w:LsG0;

    .line 2
    iget-object p1, p1, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 3
    iget-wide v0, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 4
    invoke-static {v0, v1, p1}, LJ/N;->Mbs$pg2O(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
