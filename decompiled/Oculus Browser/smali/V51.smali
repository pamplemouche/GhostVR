.class public LV51;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/midi/MidiManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/MidiManagerAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV51;->a:Lorg/chromium/midi/MidiManagerAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, LV51;->a:Lorg/chromium/midi/MidiManagerAndroid;

    .line 2
    iget-boolean v1, v0, Lorg/chromium/midi/MidiManagerAndroid;->a:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lorg/chromium/midi/MidiManagerAndroid;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, v0, Lorg/chromium/midi/MidiManagerAndroid;->d:Landroid/media/midi/MidiManager;

    new-instance v2, LX51;

    invoke-direct {v2, v0, p1}, LX51;-><init>(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    iget-object v0, v0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v0}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, LV51;->a:Lorg/chromium/midi/MidiManagerAndroid;

    .line 2
    invoke-virtual {v0, p1}, Lorg/chromium/midi/MidiManagerAndroid;->a(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method
