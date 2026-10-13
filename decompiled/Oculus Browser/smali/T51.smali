.class public LT51;
.super Landroid/media/midi/MidiReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/midi/MidiInputPortAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/MidiInputPortAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT51;->a:Lorg/chromium/midi/MidiInputPortAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 9

    .line 1
    iget-object v0, p0, LT51;->a:Lorg/chromium/midi/MidiInputPortAndroid;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LT51;->a:Lorg/chromium/midi/MidiInputPortAndroid;

    .line 3
    iget-object v1, v1, Lorg/chromium/midi/MidiInputPortAndroid;->a:Landroid/media/midi/MidiOutputPort;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, LT51;->a:Lorg/chromium/midi/MidiInputPortAndroid;

    .line 6
    iget-wide v2, v1, Lorg/chromium/midi/MidiInputPortAndroid;->b:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    .line 7
    invoke-static/range {v2 .. v8}, LJ/N;->MzDIdqgH(J[BIIJ)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
