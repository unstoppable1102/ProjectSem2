<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 21/05/2024
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<div
        class="page-container relative h-full flex flex-auto flex-col px-4 sm:px-6 md:px-8 py-4 sm:py-6">
    <div class="container mx-auto">
        <h3 class="mb-4">Edit Product</h3>
        <f:form action="${contextPath}/admin/product/update" method="post" enctype="multipart/form-data" modelAttribute="product">
            <div class="form-container vertical">
                <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
                    <div class="lg:col-span-2">
                        <div class="card adaptable-card !border-b pb-6 py-4 rounded-br-none rounded-bl-none">
                            <div class="card-body">
                                <h5>Basic Information</h5>
                                <p class="mb-6">Section to config basic product information</p>
                                <div class="form-item vertical">
                                    <label class="form-label mb-2">Product Id</label>
                                    <div>
                                        <f:hidden class="input" path="id"/>
                                        <label class="form-label mb-2">${product.id}</label>
                                    </div>
                                </div>
                                <div class="form-item vertical">
                                    <label class="form-label mb-2">Product Name</label>
                                    <div>
                                        <f:input class="input" type="text" path="productName"/>
                                    </div>
                                </div>
                                <div class="form-item vertical">
                                    <label class="form-label mb-2">Description</label>
                                    <div class="rich-text-editor">
                                        <f:textarea id="editor" path="description"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                                class="card adaptable-card !border-b pb-6 py-4 rounded-br-none rounded-bl-none">
                            <div class="card-body">
                                <h5>Pricing</h5>
                                <p class="mb-6">Section to config product sales information</p>
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                    <div class="col-span-1">
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Quantity</label>
                                            <div>
                                                <f:input class="input" type="text" path="quantity" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-1">
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Price Old</label>
                                            <div>
												<span class="input-wrapper undefined">
													<div class="input-suffix-start">$</div>
													<f:input class="input pl-8" type="text" path="priceOld" />
												</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                    <div class="col-span-1">
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Price</label>
                                            <div>
												<span class="input-wrapper undefined">
													<div class="input-suffix-start">$</div>
													<f:input class="input pl-8" type="text" path="price" />
												</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card adaptable-card pb-6 py-4 ">
                            <div class="card-body">
                                <h5>Organizations</h5>
                                <p class="mb-6">Section to config the product attribute</p>
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                    <div class="col-span-1">
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Category</label>
                                            <div>
                                                <f:select class="input" path="categoryId" items="${category}"
                                                          itemValue="id" itemLabel="name">
                                                </f:select>
                                            </div>
                                        </div>

                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Status</label>
                                            <div class="flex gap-4">
                                                <label class="radio-label inline-flex">
                                                    <f:radiobutton class="radio" path="status" value="1" />
                                                    <span>In Stock</span>
                                                </label>
                                                <label class="radio-label inline-flex">
                                                    <f:radiobutton class="radio" path="status" value="0" />
                                                    <span>Out of Stock</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-1">
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Brand</label>
                                            <div>
                                                <f:select class="input" path="brandId" items="${brand}"
                                                          itemValue="id" itemLabel="name">
                                                </f:select>
                                            </div>
                                        </div>
                                        <div class="form-item vertical">
                                            <label class="form-label mb-2">Featured</label>
                                            <div class="flex gap-4">
                                                <label class="radio-label inline-flex">
                                                    <f:checkbox class="radio" path="featured" value="1" />
                                                    <span>Featured</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="lg:col-span-1">
                        <div class="card adaptable-card mb-4">
                            <div class="card-body">
                                <h5>Product Image</h5>
                                <p class="mb-6">Add or change image for the product</p>
                                <div class="form-item vertical">
                                    <div>
                                        <div
                                                class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-2 xl:grid-cols-3 gap-4">
                                            <div class="group relative rounded border p-2 flex">
                                                <img class="rounded max-h-[140px] max-w-full"
                                                     src="${contextPath}/resources/images/${product.image}" alt="image-1" id="preview">
                                                <div class="absolute inset-2 bg-gray-900/[.7] group-hover:flex hidden text-xl items-center justify-center">
													<span class="text-gray-100 hover:text-gray-300 cursor-pointer p-1.5">
														<svg stroke="currentColor" fill="currentColor"
                                                             stroke-width="0" viewBox="0 0 20 20" aria-hidden="true"
                                                             height="1em" width="1em"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 12a2 2 0 100-4 2 2 0 000 4z"></path>
                                                            <path fill-rule="evenodd"
                                                                  d="M.458 10C1.732 5.943 5.522 3 10 3s8.268 2.943 9.542 7c-1.274 4.057-5.064 7-9.542 7S1.732 14.057.458 10zM14 10a4 4 0 11-8 0 4 4 0 018 0z"
                                                                  clip-rule="evenodd">
															</path>
                                                         </svg>
													</span>
                                                    <span class="text-gray-100 hover:text-gray-300 cursor-pointer p-1.5">
														<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 20 20" aria-hidden="true"
                                                             height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd"
                                                                  d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                                                  clip-rule="evenodd">
															</path>
                                                         </svg>
													</span>
                                                </div>
                                            </div>
                                            <div class="upload upload-draggable hover:border-primary-600 min-h-fit">
                                                <input class="upload-input draggable" type="file" name="file" title="" value="" onchange="showImg(this, 'preview')">
                                                <div class="max-w-full flex flex-col px-4 py-2 justify-center items-center">
                                                    <img src="${contextPath}/resources/admin/img/others/upload.png" alt="" >
                                                    <p class="font-semibold text-center text-gray-800 dark:text-white">Upload</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="md:flex items-center">
                    <button class="btn btn-default btn-sm ltr:mr-2 rtl:ml-2" type="button">Discard</button>
                    <button class="btn btn-solid btn-sm" type="submit">
						<span class="flex items-center justify-center">
							<span class="text-lg">
								<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024"
                                     height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
	                                <path
                                            d="M893.3 293.3L730.7 130.7c-7.5-7.5-16.7-13-26.7-16V112H144c-17.7 0-32 14.3-32 32v736c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V338.5c0-17-6.7-33.2-18.7-45.2zM384 184h256v104H384V184zm456 656H184V184h136v136c0 17.7 14.3 32 32 32h320c17.7 0 32-14.3 32-32V205.8l136 136V840zM512 442c-79.5 0-144 64.5-144 144s64.5 144 144 144 144-64.5 144-144-64.5-144-144-144zm0 224c-44.2 0-80-35.8-80-80s35.8-80 80-80 80 35.8 80 80-35.8 80-80 80z"></path>
                             	</svg>
							</span>
							<span class="ltr:ml-1 rtl:mr-1">Save</span>
						</span>
                    </button>
                </div>
            </div>
        </f:form>
    </div>
</div>
<script>
    ClassicEditor.create(document.querySelector('#editor'))
        .then(editor => {
            console.log(editor);
        })
        .catch(error => {
            console.error(error);
        });
</script>
<script type="">
    function showImg(input, target) {
        let file = input.files[0];
        let reader = new FileReader();

        reader.readAsDataURL(file);
        reader.onload = function() {
            let img = document.getElementById(target);
            // can also use "this.result"
            img.src = reader.result;
        }
    }

</script>