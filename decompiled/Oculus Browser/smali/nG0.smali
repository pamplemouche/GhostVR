.class public final LnG0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public final synthetic b:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/sync/ProfileSyncService;LmG0;)V
    .locals 3

    .line 1
    iput-object p1, p0, LnG0;->b:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget p2, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c:I

    if-ne p2, v0, :cond_0

    .line 4
    iget-wide v1, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 5
    invoke-static {v1, v2, p1, v0}, LJ/N;->MvEEhEqM(JLjava/lang/Object;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, LnG0;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LnG0;->a:Z

    .line 4
    iget-object v0, p0, LnG0;->b:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 5
    iget v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 6
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 7
    invoke-static {v2, v3, v0, v1}, LJ/N;->MvEEhEqM(JLjava/lang/Object;Z)V

    const-string v0, "SyncManualStartAndroid"

    .line 8
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, LnG0;->b:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    const/4 v1, 0x4

    .line 10
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 11
    invoke-static {v2, v3, v0, v1}, LJ/N;->MlP9oGhJ(JLjava/lang/Object;I)V

    :cond_1
    return-void
.end method
