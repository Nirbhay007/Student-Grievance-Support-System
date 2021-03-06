<?php
/*
 * Copyright 2014 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

/**
 * The "dicomWeb" collection of methods.
 * Typical usage is:
 *  <code>
 *   $healthcareService = new Google_Service_CloudHealthcare(...);
 *   $dicomWeb = $healthcareService->dicomWeb;
 *  </code>
 */
class Google_Service_CloudHealthcare_Resource_ProjectsLocationsDatasetsDicomStoresDicomWeb extends Google_Service_Resource
{
  /**
   * SearchForInstances returns a list of matching instances. See http://dicom.nem
   * a.org/medical/dicom/current/output/html/part18.html#sect_10.6.
   * (dicomWeb.searchForInstances)
   *
   * @param string $parent The name of the DICOM store that is being accessed
   * (e.g., `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/d
   * icomStores/{dicom_store_id}`).
   * @param string $dicomWebPath The path of the SearchForInstancesRequest
   * DICOMweb request (e.g., `instances` or `series/{series_uid}/instances` or
   * `studies/{study_uid}/instances`).
   * @param array $optParams Optional parameters.
   * @return Google_Service_CloudHealthcare_HttpBody
   */
  public function searchForInstances($parent, $dicomWebPath, $optParams = array())
  {
    $params = array('parent' => $parent, 'dicomWebPath' => $dicomWebPath);
    $params = array_merge($params, $optParams);
    return $this->call('searchForInstances', array($params), "Google_Service_CloudHealthcare_HttpBody");
  }
  /**
   * SearchForSeries returns a list of matching series. See http://dicom.nema.org/
   * medical/dicom/current/output/html/part18.html#sect_10.6.
   * (dicomWeb.searchForSeries)
   *
   * @param string $parent The name of the DICOM store that is being accessed
   * (e.g., `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/d
   * icomStores/{dicom_store_id}`).
   * @param string $dicomWebPath The path of the SearchForSeries DICOMweb
   * request(e.g., `series` or `studies/{study_uid}/series`).
   * @param array $optParams Optional parameters.
   * @return Google_Service_CloudHealthcare_HttpBody
   */
  public function searchForSeries($parent, $dicomWebPath, $optParams = array())
  {
    $params = array('parent' => $parent, 'dicomWebPath' => $dicomWebPath);
    $params = array_merge($params, $optParams);
    return $this->call('searchForSeries', array($params), "Google_Service_CloudHealthcare_HttpBody");
  }
  /**
   * SearchForStudies returns a list of matching studies. See http://dicom.nema.or
   * g/medical/dicom/current/output/html/part18.html#sect_10.6.
   * (dicomWeb.searchForStudies)
   *
   * @param string $parent The name of the DICOM store that is being accessed
   * (e.g., `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/d
   * icomStores/{dicom_store_id}`).
   * @param string $dicomWebPath The path of the SearchForStudies DICOMweb request
   * (e.g., `studies`).
   * @param array $optParams Optional parameters.
   * @return Google_Service_CloudHealthcare_HttpBody
   */
  public function searchForStudies($parent, $dicomWebPath, $optParams = array())
  {
    $params = array('parent' => $parent, 'dicomWebPath' => $dicomWebPath);
    $params = array_merge($params, $optParams);
    return $this->call('searchForStudies', array($params), "Google_Service_CloudHealthcare_HttpBody");
  }
  /**
   * StoreInstances stores DICOM instances associated with study instance unique
   * identifiers (SUID). See http://dicom.nema.org/medical/dicom/current/output/ht
   * ml/part18.html#sect_10.5. (dicomWeb.storeInstances)
   *
   * @param string $parent The name of the DICOM store that is being accessed
   * (e.g., `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/d
   * icomStores/{dicom_store_id}`).
   * @param string $dicomWebPath The path of the StoreInstances DICOMweb request
   * (e.g., `studies/[{study_id}]`). Note that the `study_uid` is optional.
   * @param Google_Service_CloudHealthcare_HttpBody $postBody
   * @param array $optParams Optional parameters.
   * @return Google_Service_CloudHealthcare_HttpBody
   */
  public function storeInstances($parent, $dicomWebPath, Google_Service_CloudHealthcare_HttpBody $postBody, $optParams = array())
  {
    $params = array('parent' => $parent, 'dicomWebPath' => $dicomWebPath, 'postBody' => $postBody);
    $params = array_merge($params, $optParams);
    return $this->call('storeInstances', array($params), "Google_Service_CloudHealthcare_HttpBody");
  }
}
