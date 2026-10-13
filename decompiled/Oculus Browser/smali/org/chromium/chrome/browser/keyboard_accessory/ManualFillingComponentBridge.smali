.class public Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Loi0;

.field public final c:LWh0;

.field public final d:Lorg/chromium/chrome/browser/ChromeActivity;

.field public e:J


# direct methods
.method public constructor <init>(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Loi0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loi0;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->b:Loi0;

    .line 4
    iput-wide p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->e:J

    .line 5
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->d:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->c:LWh0;

    .line 7
    throw p1
.end method

.method private addFieldToUserInfo(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    if-eqz p7, :cond_0

    .line 1
    new-instance p7, LZh0;

    invoke-direct {p7, p0, p2}, LZh0;-><init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;I)V

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    move-object v5, p7

    .line 2
    check-cast p1, Lni0;

    .line 3
    iget-object p1, p1, Lni0;->a:Ljava/util/List;

    .line 4
    new-instance p2, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/keyboard_accessory/data/UserInfoField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFooterCommandToAccessorySheetData(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    .line 1
    check-cast p1, Lii0;

    .line 2
    iget-object p1, p1, Lii0;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lki0;

    new-instance v1, Lai0;

    invoke-direct {v1, p0, p3}, Lai0;-><init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;I)V

    invoke-direct {v0, p2, v1}, Lki0;-><init>(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUserInfoToAccessorySheetData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lni0;

    new-instance v1, LYh0;

    invoke-direct {v1, p0}, LYh0;-><init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;)V

    invoke-direct {v0, p2, v1}, Lni0;-><init>(Ljava/lang/String;Lmi0;)V

    .line 2
    check-cast p1, Lii0;

    .line 3
    iget-object p1, p1, Lii0;->b:Ljava/util/List;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private closeAccessorySheet()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public static create(JLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;-><init>(JLorg/chromium/ui/base/WindowAndroid;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static createAccessorySheetData(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lii0;

    invoke-direct {v0, p0, p1, p2}, Lii0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFaviconResult(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lli0;

    invoke-direct {v0, p0, p1}, Lli0;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loi0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loi0;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->e:J

    return-void
.end method

.method private onAutomaticGenerationStatusChanged(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->d:Lorg/chromium/chrome/browser/ChromeActivity;

    const v1, 0x7f130489

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lji0;

    .line 2
    new-instance v2, Lji0;

    new-instance v3, LXh0;

    invoke-direct {v3, p0}, LXh0;-><init>(Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;)V

    invoke-direct {v2, p1, v0, v3}, Lji0;-><init>(Ljava/lang/String;ILorg/chromium/base/Callback;)V

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v0, [Lji0;

    .line 3
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->b:Loi0;

    invoke-virtual {p1, v1}, Loi0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private onItemsAvailable(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lii0;

    .line 2
    iget v0, p1, Lii0;->a:I

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loi0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Loi0;->a(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Loi0;

    const/high16 v1, -0x80000000

    .line 6
    invoke-direct {p1, v1}, Loi0;-><init>(I)V

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/ManualFillingComponentBridge;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private swapSheetWithKeyboard()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public showWhenKeyboardIsVisible()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method
