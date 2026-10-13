.class public final synthetic LZh0;
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

    iput-object p1, p0, LZh0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    iput p2, p0, LZh0;->b:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, LZh0;->a:Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    iget v1, p0, LZh0;->b:I

    check-cast p1, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;

    if-eqz v0, :cond_5

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;->isObfuscated()Z

    move-result v2

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eq v1, v3, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :cond_3
    :goto_0
    const/4 v3, 0x0

    const-string v4, "KeyboardAccessory.AccessorySheetSuggestionsSelected"

    .line 2
    invoke-static {v4, v3}, Lbi0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3, v2, v7}, LfV;->a(Ljava/lang/String;II)V

    .line 4
    invoke-static {v4, v1}, Lbi0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3, v2, v7}, LfV;->a(Ljava/lang/String;II)V

    .line 6
    iget-wide v2, v0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->e:J

    .line 7
    invoke-static {v2, v3, v0, v1, p1}, LJ/N;->M6ME2$pd(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Unable to handle tabType: "

    invoke-static {v0, v1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
