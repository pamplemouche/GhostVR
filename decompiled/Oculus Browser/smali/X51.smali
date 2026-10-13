.class public LX51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# instance fields
.field public final synthetic a:Landroid/media/midi/MidiDeviceInfo;

.field public final synthetic b:Lorg/chromium/midi/MidiManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, LX51;->b:Lorg/chromium/midi/MidiManagerAndroid;

    iput-object p2, p0, LX51;->a:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, LX51;->b:Lorg/chromium/midi/MidiManagerAndroid;

    iget-object v1, p0, LX51;->a:Landroid/media/midi/MidiDeviceInfo;

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/chromium/midi/MidiManagerAndroid;->a(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method
