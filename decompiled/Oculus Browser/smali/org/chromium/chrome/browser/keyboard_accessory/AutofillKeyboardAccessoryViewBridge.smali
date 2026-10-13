.class public Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCR0;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public w:J

.field public x:LWh0;

.field public y:Landroid/content/Context;

.field public z:Loi0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Loi0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loi0;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->z:Loi0;

    return-void
.end method

.method public static addToAutofillSuggestionArray([Lorg/chromium/components/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 9

    if-nez p4, :cond_0

    const/4 p4, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p4}, LGZ;->a(I)I

    move-result p4

    move v3, p4

    .line 2
    :goto_0
    new-instance p4, Lorg/chromium/components/autofill/AutofillSuggestion;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/components/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;IZIZZZ)V

    aput-object p4, p0, p1

    return-void
.end method

.method private confirmDeletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Not implemented yet!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create()Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;-><init>()V

    return-object v0
.end method

.method public static createAutofillSuggestionArray(I)[Lorg/chromium/components/autofill/AutofillSuggestion;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/components/autofill/AutofillSuggestion;

    return-object p0
.end method

.method private dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->z:Loi0;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/chromium/components/autofill/AutofillSuggestion;

    invoke-virtual {v0, v1}, Loi0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->y:Landroid/content/Context;

    return-void
.end method

.method private init(JLorg/chromium/ui/base/WindowAndroid;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->y:Landroid/content/Context;

    .line 2
    instance-of p4, p3, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez p4, :cond_0

    .line 3
    iput-wide p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    return-void

    .line 4
    :cond_0
    check-cast p3, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->x:LWh0;

    .line 5
    throw p1
.end method

.method private resetNativeViewPointer()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    return-void
.end method

.method private show([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->z:Loi0;

    invoke-virtual {p2, p1}, Loi0;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M$YFyQSp(JLjava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->Mg8PCuPV(JLjava/lang/Object;I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide p1, p0, Lorg/chromium/chrome/browser/keyboard_accessory/AutofillKeyboardAccessoryViewBridge;->w:J

    .line 3
    invoke-static {p1, p2, p0}, LJ/N;->MRSuTxnn(JLjava/lang/Object;)V

    return-void
.end method
