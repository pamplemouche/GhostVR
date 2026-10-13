.class public Leu0;
.super LQu0;
.source "PG"

# interfaces
.implements LLu0;
.implements LWc1;


# instance fields
.field public final I:Landroid/os/Handler;

.field public final J:Lorg/chromium/content_public/browser/WebContents;

.field public final K:Landroid/content/Intent;

.field public final L:Landroid/content/Intent;

.field public final M:Ljava/util/Set;

.field public final N:Z

.field public O:LJu0;

.field public P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

.field public Q:Landroid/content/ServiceConnection;

.field public R:Ljava/net/URI;

.field public S:Z

.field public T:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p4, v0, p5}, LQu0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    iput-object p4, p0, Leu0;->I:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Leu0;->J:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Leu0;->L:Landroid/content/Intent;

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Leu0;->K:Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Leu0;->L:Landroid/content/Intent;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Leu0;->L:Landroid/content/Intent;

    const-string p2, "org.chromium.intent.action.PAY"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Leu0;->M:Ljava/util/Set;

    .line 11
    iput-boolean p6, p0, Leu0;->N:Z

    .line 12
    iput-object p7, p0, Leu0;->R:Ljava/net/URI;

    return-void
.end method

.method public static a(Lorg/chromium/payments/mojom/PaymentDetailsModifier;Landroid/util/JsonWriter;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 55
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    const-string v1, "total"

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 57
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->b:Lorg/chromium/payments/mojom/PaymentItem;

    invoke-static {v0, p1}, Leu0;->a(Lorg/chromium/payments/mojom/PaymentItem;Landroid/util/JsonWriter;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "supportedMethods"

    .line 59
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 60
    iget-object v0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v0, v0, Lorg/chromium/payments/mojom/PaymentMethodData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "data"

    .line 62
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentDetailsModifier;->d:Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 63
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static a(Lorg/chromium/payments/mojom/PaymentItem;Landroid/util/JsonWriter;)V
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "label"

    .line 48
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "amount"

    .line 49
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "currency"

    .line 50
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v1, v1, LT81;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "value"

    .line 51
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object p0, p0, LT81;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 53
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    const-string v7, "paymentRequestId"

    .line 3
    invoke-virtual {v6, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const-string v7, "merchantName"

    .line 4
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "topLevelOrigin"

    .line 5
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "paymentRequestOrigin"

    .line 6
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v4, :cond_3

    .line 7
    array-length v7, v4

    if-lez v7, :cond_3

    .line 8
    array-length v7, v4

    new-array v7, v7, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    .line 9
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_2

    .line 10
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 11
    aget-object v10, v4, v8

    const-string v11, "certificate"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 12
    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "topLevelCertificateChain"

    .line 13
    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_3
    move-object v7, v1

    .line 14
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "methodNames"

    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "{}"

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 18
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v10, v9, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    .line 20
    :goto_3
    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v8, "methodData"

    .line 21
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p8, :cond_7

    .line 22
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    .line 23
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 24
    new-instance v11, Landroid/util/JsonWriter;

    invoke-direct {v11, v9}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    :try_start_0
    invoke-virtual {v11}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 26
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/chromium/payments/mojom/PaymentDetailsModifier;

    .line 27
    invoke-static {v12, v11}, Leu0;->a(Lorg/chromium/payments/mojom/PaymentDetailsModifier;Landroid/util/JsonWriter;)V

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {v11}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :catch_0
    move-object v8, v10

    :goto_5
    const-string v9, "modifiers"

    .line 30
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v8, "total"

    if-eqz v5, :cond_9

    .line 31
    iget-object v9, v5, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    .line 32
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 33
    new-instance v12, Landroid/util/JsonWriter;

    invoke-direct {v12, v11}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 34
    :try_start_1
    invoke-virtual {v12}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v13, "currency"

    .line 35
    invoke-virtual {v12, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v13

    iget-object v14, v9, LT81;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v13, "value"

    .line 36
    invoke-virtual {v12, v13}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v13

    iget-object v9, v9, LT81;->c:Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 37
    invoke-virtual {v12}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :catch_1
    move-object v9, v1

    :goto_6
    if-nez v9, :cond_8

    move-object v9, v10

    .line 39
    :cond_8
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v0, :cond_a

    const-string v9, "id"

    .line 40
    invoke-virtual {v6, v9, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "origin"

    .line 41
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iframeOrigin"

    .line 42
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_b

    const-string v0, "certificateChain"

    .line 43
    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 44
    :cond_b
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "methodName"

    .line 45
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p5

    .line 46
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/payments/mojom/PaymentMethodData;

    if-nez v0, :cond_c

    move-object v0, v10

    goto :goto_7

    .line 47
    :cond_c
    iget-object v0, v0, Lorg/chromium/payments/mojom/PaymentMethodData;->c:Ljava/lang/String;

    :goto_7
    const-string v2, "data"

    .line 48
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dataMap"

    .line 49
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 51
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 52
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    if-eqz v5, :cond_d

    .line 53
    invoke-virtual {v2, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 54
    invoke-static {v5, v2}, Leu0;->a(Lorg/chromium/payments/mojom/PaymentItem;Landroid/util/JsonWriter;)V

    :cond_d
    if-eqz p7, :cond_e

    const-string v3, "displayItems"

    .line 55
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 56
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 57
    :cond_e
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :catch_2
    nop

    :goto_8
    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    move-object v10, v1

    :goto_9
    const-string v0, "details"

    .line 59
    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 24
    iget-object v0, p0, Leu0;->M:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(LKu0;)V
    .locals 0

    return-void
.end method

.method public final a(LQu0;)V
    .locals 2

    .line 13
    iget-object v0, p0, Leu0;->Q:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 14
    iget-boolean v1, p0, Leu0;->T:Z

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Leu0;->T:Z

    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Leu0;->Q:Landroid/content/ServiceConnection;

    .line 19
    :cond_1
    iget-object v0, p0, Leu0;->O:LJu0;

    if-nez v0, :cond_2

    return-void

    .line 20
    :cond_2
    iget-object v0, p0, Leu0;->I:Landroid/os/Handler;

    new-instance v1, LWt0;

    invoke-direct {v1, p0, p1}, LWt0;-><init>(Leu0;LQu0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)V
    .locals 3

    .line 39
    iget-object v0, p0, Leu0;->J:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    const-string v1, "Unable to invoke the payment app."

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p0, Leu0;->I:Landroid/os/Handler;

    new-instance p2, Lbu0;

    invoke-direct {p2, p0, v1}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Leu0;->J:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    iget-object p1, p0, Leu0;->I:Landroid/os/Handler;

    new-instance p2, Lbu0;

    invoke-direct {p2, p0, v1}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Leu0;->L:Landroid/content/Intent;

    invoke-static/range {p1 .. p9}, Leu0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    :try_start_0
    iget-object p1, p0, Leu0;->L:Landroid/content/Intent;

    const p2, 0x7f1304b4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p0, p2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    iget-object p1, p0, Leu0;->I:Landroid/os/Handler;

    new-instance p2, Lbu0;

    invoke-direct {p2, p0, v1}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    iget-object p1, p0, Leu0;->I:Landroid/os/Handler;

    new-instance p2, Lbu0;

    const-string p3, "Payment app does not have android:exported=\"true\" on the PAY activity."

    invoke-direct {p2, p0, p3}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p10

    .line 25
    iput-object v0, v11, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    .line 26
    invoke-static/range {p3 .. p3}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static/range {p4 .. p4}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    iget-boolean v0, v11, Leu0;->N:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 29
    invoke-virtual/range {v0 .. v9}, Leu0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)V

    return-void

    .line 30
    :cond_0
    iget-object v0, v11, Leu0;->J:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, v11, Leu0;->I:Landroid/os/Handler;

    new-instance v1, Lbu0;

    const-string v2, "Unable to find Chrome activity."

    invoke-direct {v1, p0, v2}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 32
    :cond_1
    new-instance v12, Ltc1;

    const v1, 0x7f140245

    invoke-direct {v12, v0, v1}, Ltc1;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f13030f

    .line 33
    invoke-virtual {v12, v0}, LO8;->b(I)LO8;

    const v0, 0x7f130311

    .line 34
    invoke-virtual {v12, v0}, LO8;->a(I)LO8;

    const v13, 0x7f130443

    new-instance v14, LYt0;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, LYt0;-><init>(Leu0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)V

    .line 35
    invoke-virtual {v12, v13, v14}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f1301d4

    new-instance v1, LZt0;

    invoke-direct {v1, p0}, LZt0;-><init>(Leu0;)V

    .line 36
    invoke-virtual {v12, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    new-instance v0, Lau0;

    invoke-direct {v0, p0}, Lau0;-><init>(Leu0;)V

    .line 37
    iget-object v1, v12, LO8;->a:LK8;

    iput-object v0, v1, LK8;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 38
    invoke-virtual {v12}, LO8;->b()LP8;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;LJu0;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p7

    .line 1
    iput-object v1, v0, Leu0;->O:LJu0;

    .line 2
    iget-object v1, v0, Leu0;->K:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p0}, Leu0;->a(LQu0;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcu0;

    invoke-direct {v1, p0}, Lcu0;-><init>(Leu0;)V

    iput-object v1, v0, Leu0;->Q:Landroid/content/ServiceConnection;

    .line 5
    iget-object v1, v0, Leu0;->K:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {p3}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p5

    move-object v7, p2

    .line 7
    invoke-static/range {v2 .. v10}, Leu0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :try_start_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 9
    iget-object v2, v0, Leu0;->K:Landroid/content/Intent;

    iget-object v3, v0, Leu0;->Q:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, v0, Leu0;->T:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    iget-boolean v1, v0, Leu0;->T:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Leu0;->a(LQu0;)V

    return-void

    .line 12
    :cond_1
    iget-object v1, v0, Leu0;->I:Landroid/os/Handler;

    new-instance v2, LVt0;

    invoke-direct {v2, p0}, LVt0;-><init>(Leu0;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/Intent;)V
    .locals 2

    .line 64
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 65
    invoke-virtual {p1, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeIntentCallback(LWc1;)Z

    if-nez p3, :cond_0

    .line 66
    iget-object p1, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    const-string p2, "Payment app returned an invalid result. Missing intent data."

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    const-string p2, "Payment app returned an invalid result. Missing intent extras."

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 69
    iget-object p1, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    const-string p2, "Payment app returned RESULT_CANCELED code. This is how payment apps can close their activity programmatically."

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    .line 70
    iget-object p1, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Payment app returned unrecognized activity result %d."

    .line 72
    invoke-static {p3, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "details"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 74
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "instrumentDetails"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    const-string p1, "{}"

    .line 75
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "methodName"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    const-string p2, ""

    .line 76
    :cond_6
    iget-object p3, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    invoke-interface {p3, p2, p1}, Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Leu0;->P:Lorg/chromium/chrome/browser/payments/PaymentInstrument$InstrumentDetailsCallback;

    return-void
.end method

.method public a(Ljava/util/Map;)Z
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {p0}, Leu0;->a()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 23
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Leu0;->R:Ljava/net/URI;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LCQ0;->C:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public n()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leu0;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
