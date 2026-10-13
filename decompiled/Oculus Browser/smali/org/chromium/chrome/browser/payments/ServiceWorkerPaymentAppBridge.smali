.class public Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNu0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCapabilities([Ljava/lang/Object;I[I[I)V
    .locals 1

    .line 1
    new-instance v0, LEv0;

    invoke-direct {v0, p2, p3}, LEv0;-><init>([I[I)V

    aput-object v0, p0, p1

    return-void
.end method

.method public static addPaymentAppInfo(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    check-cast p0, Ljava/util/Map;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createCapabilities(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p0, [LEv0;

    return-object p0
.end method

.method public static createPaymentAppsInfo()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static getCurrencyFromPaymentItem(Lorg/chromium/payments/mojom/PaymentItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object p0, p0, LT81;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getLabelFromPaymentItem(Lorg/chromium/payments/mojom/PaymentItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getMethodDataFromModifier(Lorg/chromium/payments/mojom/PaymentDetailsModifier;)Lorg/chromium/payments/mojom/PaymentMethodData;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    return-object p0
.end method

.method public static getStringifiedDataFromMethodData(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedMethodFromMethodData(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedNetworksFromMethodData(Lorg/chromium/payments/mojom/PaymentMethodData;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->h:[I

    return-object p0
.end method

.method public static getSupportedTypesFromMethodData(Lorg/chromium/payments/mojom/PaymentMethodData;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->i:[I

    return-object p0
.end method

.method public static getTotalFromModifier(Lorg/chromium/payments/mojom/PaymentDetailsModifier;)Lorg/chromium/payments/mojom/PaymentItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    return-object p0
.end method

.method public static getValueFromPaymentItem(Lorg/chromium/payments/mojom/PaymentItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object p0, p0, LT81;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static onAllPaymentAppsCreated(Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p0}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->e()V

    return-void
.end method

.method public static onCanMakePayment(Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$CanMakePaymentCallback;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$CanMakePaymentCallback;->a(Z)V

    return-void
.end method

.method public static onGetPaymentAppsError(Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onGetServiceWorkerPaymentAppsInfo(Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$GetServiceWorkerPaymentAppsInfoCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$GetServiceWorkerPaymentAppsInfoCallback;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static onHasServiceWorkerPaymentApps(Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$HasServiceWorkerPaymentAppsCallback;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/payments/ServiceWorkerPaymentAppBridge$HasServiceWorkerPaymentAppsCallback;->a(Z)V

    return-void
.end method

.method public static onInstallablePaymentAppCreated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 13

    move-object/from16 v0, p4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static/range {p7 .. p7}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "SWPaymentApp"

    if-nez v6, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "%s service worker installation url is not a valid URI"

    .line 4
    invoke-static {v4, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    if-nez v7, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "%s service worker scope is not a valid URI"

    .line 6
    invoke-static {v4, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    new-instance v12, LFv0;

    .line 8
    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    .line 9
    :cond_3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v9, v2

    :goto_0
    move-object v2, v12

    move-object/from16 v3, p7

    move-object v4, p0

    move/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, LFv0;-><init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;ZLandroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p8

    .line 10
    invoke-interface {v0, v12}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(LLu0;)V

    return-void
.end method

.method public static onPaymentAppAborted(Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$AbortCallback;->a(Z)V

    return-void
.end method

.method public static onPaymentAppCreated(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[Ljava/lang/String;Z[Ljava/lang/Object;[Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 16

    move-object/from16 v0, p6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static/range {p11 .. p11}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static/range {p2 .. p2}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "SWPaymentApp"

    const-string v2, "%s service worker scope is not a valid URI"

    .line 4
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    new-instance v15, LFv0;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v10, v2

    :goto_0
    move-object/from16 v13, p9

    check-cast v13, [LEv0;

    move-object v2, v15

    move-object/from16 v3, p11

    move-wide/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v14}, LFv0;-><init>(Lorg/chromium/content_public/browser/WebContents;JLjava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;[Ljava/lang/String;Z[LEv0;[Ljava/lang/String;)V

    move-object/from16 v0, p12

    .line 7
    invoke-interface {v0, v15}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(LLu0;)V

    return-void
.end method

.method public static onPaymentAppInvoked(Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0, p3}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;Ljava/util/Map;ZLorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Lorg/chromium/payments/mojom/PaymentMethodData;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 3
    invoke-static {p1, p2, p3, p4}, LJ/N;->MDzV$iTK(Ljava/lang/Object;[Ljava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method
