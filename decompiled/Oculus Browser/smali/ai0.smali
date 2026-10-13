.class public final synthetic Lai0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

.field public final b:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    iput p2, p0, Lai0;->b:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lai0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    iget v1, p0, Lai0;->b:I

    check-cast p1, Lki0;

    .line 1
    iget-wide v2, v0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->e:J

    .line 2
    invoke-static {v2, v3, v0, v1}, LJ/N;->MmIaCnPe(JLjava/lang/Object;I)V

    return-void
.end method
