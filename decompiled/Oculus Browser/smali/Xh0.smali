.class public final synthetic LXh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXh0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LXh0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    check-cast p1, Lji0;

    if-eqz v0, :cond_0

    const/4 p1, 0x6

    const/4 v1, 0x0

    const-string v2, "KeyboardAccessory.AccessoryActionSelected"

    .line 1
    invoke-static {v2, v1, p1}, LfV;->a(Ljava/lang/String;II)V

    .line 2
    iget-wide v2, v0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->e:J

    .line 3
    invoke-static {v2, v3, v0, v1}, LJ/N;->MmIaCnPe(JLjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
