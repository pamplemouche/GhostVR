.class public LZ51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:[B

.field public final synthetic y:Lorg/chromium/midi/UsbMidiDeviceAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/midi/UsbMidiDeviceAndroid;I[B)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ51;->y:Lorg/chromium/midi/UsbMidiDeviceAndroid;

    iput p2, p0, LZ51;->w:I

    iput-object p3, p0, LZ51;->x:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LZ51;->y:Lorg/chromium/midi/UsbMidiDeviceAndroid;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/midi/UsbMidiDeviceAndroid;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LZ51;->y:Lorg/chromium/midi/UsbMidiDeviceAndroid;

    .line 4
    iget-wide v0, v0, Lorg/chromium/midi/UsbMidiDeviceAndroid;->g:J

    .line 5
    iget v2, p0, LZ51;->w:I

    iget-object v3, p0, LZ51;->x:[B

    .line 6
    invoke-static {v0, v1, v2, v3}, LJ/N;->MNGB4bj1(JI[B)V

    return-void
.end method
